.class Lcom/htc/lmw/steps/MoveToSdCard$2;
.super Ljava/lang/Object;
.source "MoveToSdCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/MoveToSdCard;->displayLowStorageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/MoveToSdCard;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/MoveToSdCard;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/lmw/steps/MoveToSdCard$2;->this$0:Lcom/htc/lmw/steps/MoveToSdCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/lmw/steps/MoveToSdCard$2;->this$0:Lcom/htc/lmw/steps/MoveToSdCard;

    iget-object v1, v1, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f050026

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 171
    sget-boolean v1, Lcom/htc/lmw/AppManager;->sWasUnmountingStorage:Z

    if-nez v1, :cond_0

    .line 173
    const v1, 0x7f05002a

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 179
    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/htc/lmw/steps/MoveToSdCard$2$1;

    invoke-direct {v2, p0}, Lcom/htc/lmw/steps/MoveToSdCard$2$1;-><init>(Lcom/htc/lmw/steps/MoveToSdCard$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 186
    new-instance v1, Lcom/htc/lmw/steps/MoveToSdCard$2$2;

    invoke-direct {v1, p0}, Lcom/htc/lmw/steps/MoveToSdCard$2$2;-><init>(Lcom/htc/lmw/steps/MoveToSdCard$2;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 195
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    return-void

    .line 177
    :cond_0
    const v1, 0x7f05002b

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    goto :goto_1
.end method
