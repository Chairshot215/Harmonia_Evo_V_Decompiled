.class Lcom/android/mms/ui/ConversationList$5;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$5;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$5;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$5;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    check-cast v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$5;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1288
    return-void
.end method
