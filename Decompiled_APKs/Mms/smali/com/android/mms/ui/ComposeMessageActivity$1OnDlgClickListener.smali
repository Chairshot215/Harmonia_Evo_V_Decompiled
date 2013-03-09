.class Lcom/android/mms/ui/ComposeMessageActivity$1OnDlgClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnDlgClickListener"
.end annotation


# instance fields
.field protected m_adapterDlg:Lcom/android/mms/ui/IconListAdapter;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/IconListAdapter;)V
    .locals 0
    .parameter
    .parameter "adapterDlg"

    .prologue
    .line 10947
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1OnDlgClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10948
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1OnDlgClickListener;->m_adapterDlg:Lcom/android/mms/ui/IconListAdapter;

    .line 10949
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 10952
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$1OnDlgClickListener;->m_adapterDlg:Lcom/android/mms/ui/IconListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/IconListAdapter;->onItemAction(I)V

    .line 10953
    return-void
.end method
