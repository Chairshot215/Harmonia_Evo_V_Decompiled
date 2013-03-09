.class Lcom/htc/idlescreen/base/reminderview/NotificationView$1;
.super Ljava/lang/Object;
.source "NotificationView.java"

# interfaces
.implements Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/NotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/NotificationView;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/reminderview/NotificationView;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView$1;->this$0:Lcom/htc/idlescreen/base/reminderview/NotificationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescripeDimen()I
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView$1;->this$0:Lcom/htc/idlescreen/base/reminderview/NotificationView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->access$000(Lcom/htc/idlescreen/base/reminderview/NotificationView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    .line 409
    const-string v0, "NotificationView"

    const-string v1, "EndDrag and don\'t unlock. Start update view"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView$1;->this$0:Lcom/htc/idlescreen/base/reminderview/NotificationView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->update()V

    .line 411
    return-void
.end method
