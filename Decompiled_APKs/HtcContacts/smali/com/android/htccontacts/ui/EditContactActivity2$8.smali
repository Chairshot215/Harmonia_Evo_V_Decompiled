.class Lcom/android/htccontacts/ui/EditContactActivity2$8;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->doEditPhoto()V
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
    .line 847
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$8;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 849
    instance-of v2, p1, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 850
    check-cast v1, Lcom/htc/widget/HtcAlertDialog;

    .line 851
    .local v1, htcDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    .line 854
    .local v0, entry:Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$8;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget v3, v0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->nType:I

    iget v4, v0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->nIndexOfType:I

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->handleSelectPhoto(II)V
    invoke-static {v2, v3, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1400(Lcom/android/htccontacts/ui/EditContactActivity2;II)V

    .line 856
    .end local v0           #entry:Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;
    .end local v1           #htcDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    return-void
.end method
