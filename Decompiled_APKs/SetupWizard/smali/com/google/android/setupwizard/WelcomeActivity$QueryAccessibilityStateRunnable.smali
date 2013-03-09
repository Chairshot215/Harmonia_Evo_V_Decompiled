.class Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryAccessibilityStateRunnable"
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mStarted:J

.field final synthetic this$0:Lcom/google/android/setupwizard/WelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/setupwizard/WelcomeActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Lcom/google/android/setupwizard/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;->mStarted:J

    .line 397
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 401
    iget-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ACCESSIBILITY_TUTORIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupwizard/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 410
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;->mStarted:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    #getter for: Lcom/google/android/setupwizard/WelcomeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/setupwizard/WelcomeActivity;->access$500(Lcom/google/android/setupwizard/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 408
    :cond_1
    const-string v1, "SetupWizard"

    const-string v2, "Accessibility services timed out"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
