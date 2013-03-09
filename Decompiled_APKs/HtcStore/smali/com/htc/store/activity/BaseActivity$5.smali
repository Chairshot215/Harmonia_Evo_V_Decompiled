.class Lcom/htc/store/activity/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 459
    iput-object p1, p0, Lcom/htc/store/activity/BaseActivity$5;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$5;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/BaseActivity;->finish()V

    .line 463
    return-void
.end method
