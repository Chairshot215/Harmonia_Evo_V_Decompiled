.class Lcom/android/htccontacts/ImportVCardActivity$3;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ImportVCardActivity;->importOneVCardFromSDCard(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$3;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    iput-object p2, p0, Lcom/android/htccontacts/ImportVCardActivity$3;->val$uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$3;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    new-instance v1, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$3;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity$3;->val$uri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Landroid/net/Uri;)V

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->access$1902(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;)Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    .line 878
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$3;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$3;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->showDialog(I)V

    .line 881
    :cond_0
    return-void
.end method
