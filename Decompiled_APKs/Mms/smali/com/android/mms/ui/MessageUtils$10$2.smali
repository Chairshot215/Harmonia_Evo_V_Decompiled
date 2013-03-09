.class Lcom/android/mms/ui/MessageUtils$10$2;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$10;->onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$10;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$10;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$10$2;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$10$2;->val$name:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2083
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$10$2;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v1, v1, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    const v2, 0x7f0901eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$10$2;->val$name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2085
    .local v0, str:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$10$2;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v1, v1, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20c015d

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0200d1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901e6

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$10$2;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v3, v3, Lcom/android/mms/ui/MessageUtils$10;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0164

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 2092
    return-void
.end method
