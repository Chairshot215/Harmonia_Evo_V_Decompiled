.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$1;
.super Ljava/lang/Object;
.source "ContactWidgetMatrix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;)V
    .locals 0
    .parameter

    .prologue
    .line 4115
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$1;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4117
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4118
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$1;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getGroupList()V
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 4119
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$1;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->renewCursor()V
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 4120
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$1;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v1, 0x0

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 4121
    return-void
.end method
