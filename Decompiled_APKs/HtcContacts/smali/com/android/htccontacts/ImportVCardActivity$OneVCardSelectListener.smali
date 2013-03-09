.class Lcom/android/htccontacts/ImportVCardActivity$OneVCardSelectListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneVCardSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$OneVCardSelectListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 907
    const/4 v0, 0x0

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mCurrentIndex:I
    invoke-static {p1, v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$1202(Lcom/android/htccontacts/ImportVCardActivity;I)I

    .line 908
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$OneVCardSelectListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mCurrentIndex:I
    invoke-static {v0, p2}, Lcom/android/htccontacts/ImportVCardActivity;->access$1202(Lcom/android/htccontacts/ImportVCardActivity;I)I

    .line 911
    return-void
.end method
