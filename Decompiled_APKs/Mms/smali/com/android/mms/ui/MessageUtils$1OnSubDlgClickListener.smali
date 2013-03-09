.class Lcom/android/mms/ui/MessageUtils$1OnSubDlgClickListener;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->showNGMLocationSelector(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnSubDlgClickListener"
.end annotation


# instance fields
.field protected m_adapterDlg:Lcom/android/mms/ui/LocationAttachAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/LocationAttachAdapter;)V
    .locals 0
    .parameter "adapterAttachment"

    .prologue
    .line 1451
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1452
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$1OnSubDlgClickListener;->m_adapterDlg:Lcom/android/mms/ui/LocationAttachAdapter;

    .line 1453
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$1OnSubDlgClickListener;->m_adapterDlg:Lcom/android/mms/ui/LocationAttachAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/LocationAttachAdapter;->onItemAction(I)V

    .line 1456
    return-void
.end method
