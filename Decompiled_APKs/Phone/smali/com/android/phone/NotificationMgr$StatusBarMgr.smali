.class Lcom/android/phone/NotificationMgr$StatusBarMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusBarMgr"
.end annotation


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 282
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    .line 280
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    .line 283
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method


# virtual methods
.method enableExpandedView(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    if-eq v0, p1, :cond_0

    .line 304
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->updateStatusBar()V

    .line 307
    :cond_0
    return-void
.end method

.method enableNotificationAlerts(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 292
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    .line 293
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->updateStatusBar()V

    .line 295
    :cond_0
    return-void
.end method

.method updateStatusBar()V
    .locals 4

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, state:I
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    if-nez v1, :cond_0

    .line 316
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 319
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    if-nez v1, :cond_1

    .line 320
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 324
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating status bar state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 327
    return-void
.end method
