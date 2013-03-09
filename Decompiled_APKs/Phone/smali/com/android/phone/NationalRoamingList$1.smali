.class Lcom/android/phone/NationalRoamingList$1;
.super Ljava/lang/Object;
.source "NationalRoamingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NationalRoamingList;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NationalRoamingList;


# direct methods
.method constructor <init>(Lcom/android/phone/NationalRoamingList;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 163
    move-object v0, p1

    .line 164
    .local v0, dialog1:Landroid/content/DialogInterface;
    iget-object v1, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    iget-object v2, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    iget-object v3, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v3}, Lcom/android/phone/NationalRoamingList;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/NationalRoamingList;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/phone/NationalRoamingList;->mReservedIndex:I
    invoke-static {v1, v2}, Lcom/android/phone/NationalRoamingList;->access$002(Lcom/android/phone/NationalRoamingList;I)I

    .line 165
    iget-object v1, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    #setter for: Lcom/android/phone/NationalRoamingList;->mClickedSavedEntryIndex:I
    invoke-static {v1, p2}, Lcom/android/phone/NationalRoamingList;->access$102(Lcom/android/phone/NationalRoamingList;I)I

    .line 168
    iget-object v1, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    #getter for: Lcom/android/phone/NationalRoamingList;->mEnablePopup:Z
    invoke-static {v1}, Lcom/android/phone/NationalRoamingList;->access$200(Lcom/android/phone/NationalRoamingList;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 169
    :cond_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v2}, Lcom/android/phone/NationalRoamingList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v2}, Lcom/android/phone/NationalRoamingList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    iget-object v3, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    iget-object v3, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NationalRoamingList$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/NationalRoamingList$1$1;-><init>(Lcom/android/phone/NationalRoamingList$1;Landroid/content/DialogInterface;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    #setter for: Lcom/android/phone/NationalRoamingList;->mClickedDialogEntryIndex:I
    invoke-static {v1, p2}, Lcom/android/phone/NationalRoamingList;->access$302(Lcom/android/phone/NationalRoamingList;I)I

    .line 188
    iget-object v1, p0, Lcom/android/phone/NationalRoamingList$1;->this$0:Lcom/android/phone/NationalRoamingList;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/phone/NationalRoamingList;->onClick(Landroid/content/DialogInterface;I)V

    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
