.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$2;
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
    .line 4162
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$2;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4164
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4165
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$2;->this$1:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getGroupList()V
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 4166
    return-void
.end method
