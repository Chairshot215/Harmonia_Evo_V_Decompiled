.class Lcom/htc/store/activity/landing/LandingMyActivity$6;
.super Ljava/lang/Object;
.source "LandingMyActivity.java"

# interfaces
.implements Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$6;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Z)V
    .locals 6
    .parameter "isEmpty"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 658
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onContentChanged: "

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$6;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1800(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    if-nez p1, :cond_1

    .line 661
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$6;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1700(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$6;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1700(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    goto :goto_0
.end method

.method public onCursorChanged(Z)V
    .locals 6
    .parameter "isEmpty"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 647
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onCursorChanged: "

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$6;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1600(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    if-nez p1, :cond_1

    .line 650
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$6;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1700(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$6;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1700(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    goto :goto_0
.end method
