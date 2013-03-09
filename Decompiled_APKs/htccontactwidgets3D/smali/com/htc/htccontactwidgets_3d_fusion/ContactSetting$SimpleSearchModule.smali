.class public Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;
.super Ljava/lang/Object;
.source "ContactSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SimpleSearchModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule$SearchHandler;
    }
.end annotation


# static fields
.field static final MSG_DESTROY:I = 0x3

.field static final MSG_SEARCH:I = 0x1

.field static final MSG_SEARCH_COMPLETE:I = 0x2


# instance fields
.field mSearchHandler:Landroid/os/Handler;

.field mSearchThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V
    .locals 3
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 772
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SimpleSearchThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->mSearchThread:Landroid/os/HandlerThread;

    .line 773
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 774
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule$SearchHandler;

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule$SearchHandler;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    .line 775
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 780
    return-void
.end method

.method public doSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "pattern"

    .prologue
    const/4 v3, 0x1

    .line 783
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v0, p1

    .line 784
    .local v0, searchPattern:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getInputText()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, textString:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 789
    :cond_0
    return-void

    .line 783
    .end local v0           #searchPattern:Ljava/lang/String;
    .end local v1           #textString:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
