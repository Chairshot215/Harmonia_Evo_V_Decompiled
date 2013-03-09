.class Lcom/android/mms/ui/RestoreActivity$13;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RestoreActivity;->displayConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$13;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$13;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity;->displayProgressDialog()V

    .line 1243
    return-void
.end method
