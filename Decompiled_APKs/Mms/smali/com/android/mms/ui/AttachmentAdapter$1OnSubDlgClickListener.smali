.class Lcom/android/mms/ui/AttachmentAdapter$1OnSubDlgClickListener;
.super Ljava/lang/Object;
.source "AttachmentTypeSelectorAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentAdapter;->showSubDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnSubDlgClickListener"
.end annotation


# instance fields
.field protected m_adapterDlg:Lcom/android/mms/ui/IconListAdapter;

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AttachmentAdapter;Lcom/android/mms/ui/IconListAdapter;)V
    .locals 0
    .parameter
    .parameter "adapterAttachment"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentAdapter$1OnSubDlgClickListener;->this$0:Lcom/android/mms/ui/AttachmentAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/android/mms/ui/AttachmentAdapter$1OnSubDlgClickListener;->m_adapterDlg:Lcom/android/mms/ui/IconListAdapter;

    .line 268
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter$1OnSubDlgClickListener;->m_adapterDlg:Lcom/android/mms/ui/IconListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/IconListAdapter;->onItemAction(I)V

    .line 272
    return-void
.end method
