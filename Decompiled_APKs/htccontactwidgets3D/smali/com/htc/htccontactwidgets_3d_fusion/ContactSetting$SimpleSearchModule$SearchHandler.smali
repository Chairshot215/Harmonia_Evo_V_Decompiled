.class Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule$SearchHandler;
.super Landroid/os/Handler;
.source "ContactSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    .line 794
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 795
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 800
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 818
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 803
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 805
    .local v0, searchPattern:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    iget-object v2, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getInputText()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, textString:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    iget-object v2, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 809
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    iget-object v2, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v2, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->startQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 803
    .end local v0           #searchPattern:Ljava/lang/String;
    .end local v1           #textString:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 814
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
