.class Lcom/htc/store/activity/detail/DetailInfo$4;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$4;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 579
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "click button - back"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$4;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo;->finish()V

    .line 581
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$4;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$800(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/htc/store/activity/landing/LandingTab;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 583
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$4;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$900(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 584
    return-void
.end method
