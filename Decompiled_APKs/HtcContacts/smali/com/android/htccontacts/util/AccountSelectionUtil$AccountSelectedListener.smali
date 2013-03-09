.class Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field private final mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    const-string v0, "AccountSelectionUtil"

    const-string v1, "The size of Account list is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 66
    iput p3, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    .line 67
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 74
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    return-void

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    iget-object v0, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    invoke-static {v1, v2, v0}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/htccontacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v1, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    iget-object v0, p0, Lcom/android/htccontacts/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    invoke-static {v1, v2, v0}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doExport(Landroid/content/Context;ILcom/android/htccontacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f0a028b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
