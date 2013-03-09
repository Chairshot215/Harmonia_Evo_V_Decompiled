.class Lcom/android/htccontacts/DeDuplicationActivity$5;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/DeDuplicationActivity;->displayDeleteFinishDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$5;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$5;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/DeDuplicationActivity;->setResult(I)V

    .line 530
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$5;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/DeDuplicationActivity;->finish()V

    .line 531
    return-void
.end method
