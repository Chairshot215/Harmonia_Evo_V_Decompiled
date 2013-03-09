.class Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;I)V
    .locals 0
    .parameter
    .parameter "resId"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p2, p0, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "errorMessage"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const v0, 0x7f07000f

    iput v0, p0, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 185
    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/htccontacts/ImportVCardActivity;->access$102(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    iget v1, p0, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->showDialog(I)V

    .line 192
    :cond_0
    return-void
.end method
