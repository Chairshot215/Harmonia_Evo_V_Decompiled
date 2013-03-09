.class Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiVCardSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSelectedIndexSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$1300(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mCurrentIndex:I
    invoke-static {v0, p2}, Lcom/android/htccontacts/ImportVCardActivity;->access$1202(Lcom/android/htccontacts/ImportVCardActivity;I)I

    .line 918
    if-eqz p3, :cond_1

    .line 919
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSelectedIndexSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$1300(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSelectedIndexSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$1300(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
