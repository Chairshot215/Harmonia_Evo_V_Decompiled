.class Lcom/android/htccontacts/DeDuplicationActivity$8;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/DeDuplicationActivity;->displayDialogNumbersOfAllContactTypesAreLessThanTwo()V
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
    .line 627
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$8;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$8;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/DeDuplicationActivity;->finish()V

    .line 630
    return-void
.end method
