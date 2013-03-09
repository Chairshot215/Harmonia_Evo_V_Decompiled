.class Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionFailDialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/DialogActivity;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/DialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    packed-switch p2, :pswitch_data_0

    .line 219
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown button clicked. which is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 207
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, intentSetting:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-virtual {v1, v0}, Lcom/htc/musicenhancer/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    iget-object v1, p0, Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/DialogActivity;->finish()V

    goto :goto_0

    .line 216
    .end local v0           #intentSetting:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/DialogActivity;->finish()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
