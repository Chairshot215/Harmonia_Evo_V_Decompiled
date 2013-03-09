.class Lcom/htc/store/activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/htc/store/activity/BaseActivity$3;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 445
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 446
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$3;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/BaseActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/ActivityUtils;->setAccount(Landroid/content/Context;)V

    .line 447
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$3;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/BaseActivity;->finish()V

    .line 448
    return-void
.end method
