.class Lcom/android/htccontacts/app/GroupDialogPicker$2;
.super Ljava/lang/Object;
.source "GroupDialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/GroupDialogPicker;->generateDialog(Lcom/htc/app/HtcAlertController$AlertParams;)Lcom/htc/widget/HtcAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/GroupDialogPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/GroupDialogPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$2;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 254
    return-void
.end method
