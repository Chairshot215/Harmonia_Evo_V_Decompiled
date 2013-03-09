.class Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;
.super Ljava/lang/Object;
.source "SocialWidget.java"

# interfaces
.implements Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/socialclock/SocialWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/htc/clock/util/social/SocialData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResume:Z
    invoke-static {v1}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$200(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;
    invoke-static {v1}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->isLoggedIn()Z

    move-result v0

    .line 300
    .local v0, isLoggedIn:Z
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #setter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialData:Lcom/htc/clock/util/social/SocialData;
    invoke-static {v1, p1}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$802(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Lcom/htc/clock/util/social/SocialData;)Lcom/htc/clock/util/social/SocialData;

    .line 301
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;
    invoke-static {v1}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$1000(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock3dwidget/socialclock/SocialView;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/htc/clock3dwidget/socialclock/SocialView;->updateUI(ZLcom/htc/clock/util/social/SocialData;)V

    .line 306
    .end local v0           #isLoggedIn:Z
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    const/4 v2, 0x1

    #setter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mNeedToUpdate:Z
    invoke-static {v1, v2}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$1102(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z

    goto :goto_0
.end method
