.class Lcom/android/systemui/statusbar/phone/RecentApps$2;
.super Ljava/lang/Object;
.source "RecentApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/RecentApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/RecentApps;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/RecentApps;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/phone/RecentApps;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/high16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/phone/RecentApps;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/RecentApps;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/widget/StatusBarUtils;->startActivity_s(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_UB_LOG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/phone/RecentApps;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->getViewIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->getRecentItem(I)Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-result-object v1

    const-string v3, "system_server"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "MRU_click"

    invoke-interface {v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "package"

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "method"

    const-string v5, "notification_bar"

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/phone/RecentApps;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/RecentApps;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RecentApps$2;->this$0:Lcom/android/systemui/statusbar/phone/RecentApps;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/RecentApps;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->exitKeyguardSecurely()V

    return-void
.end method
