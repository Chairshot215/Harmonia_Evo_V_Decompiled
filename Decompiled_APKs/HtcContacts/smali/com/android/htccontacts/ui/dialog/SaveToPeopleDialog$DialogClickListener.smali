.class Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$DialogClickListener;
.super Ljava/lang/Object;
.source "SaveToPeopleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogClickListener"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;",
            ">;"
        }
    .end annotation
.end field

.field number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$DialogClickListener;->mActivity:Ljava/lang/ref/WeakReference;

    .line 178
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$DialogClickListener;->mActivity:Ljava/lang/ref/WeakReference;

    .line 180
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$DialogClickListener;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;

    .line 184
    .local v1, activity:Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;
    if-nez v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 204
    :goto_1
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->dismissDialog()V

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->createInsertNumberOrEmailIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 195
    .end local v0           #actionIntent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->createUpdateNumberOrEmailIntent()Landroid/content/Intent;

    move-result-object v0

    .line 196
    .restart local v0       #actionIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x7f07007d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
