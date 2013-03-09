.class Lcom/android/mms/util/CForwardPreference$3;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/CForwardPreference;->showNofifyInvalidDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/CForwardPreference;

.field final synthetic val$edtText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/mms/util/CForwardPreference;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/mms/util/CForwardPreference$3;->this$0:Lcom/android/mms/util/CForwardPreference;

    iput-object p2, p0, Lcom/android/mms/util/CForwardPreference$3;->val$edtText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/mms/util/CForwardPreference$3;->val$edtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1321
    return-void
.end method
