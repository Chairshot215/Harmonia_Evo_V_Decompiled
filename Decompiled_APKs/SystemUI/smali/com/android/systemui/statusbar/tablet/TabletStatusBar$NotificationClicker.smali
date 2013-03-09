.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClicker"
.end annotation


# instance fields
.field private mId:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mPkg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mPkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mTag:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    new-array v3, v4, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v10

    aget v6, v3, v9

    aget v7, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v3, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v5, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mTag:Ljava/lang/String;

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mId:I

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v4, "TabletStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending contentIntent failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_0
.end method
