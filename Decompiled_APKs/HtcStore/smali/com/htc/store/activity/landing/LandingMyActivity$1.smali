.class Lcom/htc/store/activity/landing/LandingMyActivity$1;
.super Landroid/database/ContentObserver;
.source "LandingMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$1;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x1

    .line 124
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onChange: "

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, " , mOnPause: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity$1;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$100(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$1;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$200(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$1;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z
    invoke-static {v0, v4}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$302(Lcom/htc/store/activity/landing/LandingMyActivity;Z)Z

    .line 128
    :cond_0
    return-void
.end method
