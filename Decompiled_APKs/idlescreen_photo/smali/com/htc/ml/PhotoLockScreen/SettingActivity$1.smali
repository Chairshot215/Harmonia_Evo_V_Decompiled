.class Lcom/htc/ml/PhotoLockScreen/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/ml/PhotoLockScreen/SettingActivity;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$1;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$1;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    #getter for: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$000(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    return-void
.end method
