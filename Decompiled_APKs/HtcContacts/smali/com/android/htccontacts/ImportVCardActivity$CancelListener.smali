.class Lcom/android/htccontacts/ImportVCardActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$CancelListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$CancelListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$CancelListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    .line 203
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$CancelListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    .line 199
    return-void
.end method
