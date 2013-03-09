.class Lcom/android/htccontacts/ui/EditContactActivity2$13;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->popupConfirmCancelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 3938
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$13;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3940
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$13;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    .line 3941
    return-void
.end method
