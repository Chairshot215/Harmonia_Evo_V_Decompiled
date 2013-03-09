.class Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .parameter
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
    .line 1127
    .local p3, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1129
    :cond_0
    const-string v0, "ImportVCardActivity"

    const-string v1, "The size of Account list is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_1
    iput-object p2, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mContext:Landroid/content/Context;

    .line 1132
    iput-object p3, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 1133
    iput p4, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mResId:I

    .line 1134
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1152
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    .line 1159
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1138
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1141
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mResId:I

    packed-switch v0, :pswitch_data_0

    .line 1148
    :goto_0
    return-void

    .line 1144
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {v1, v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$602(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1145
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #calls: Lcom/android/htccontacts/ImportVCardActivity;->startImport()V
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$2200(Lcom/android/htccontacts/ImportVCardActivity;)V

    goto :goto_0

    .line 1141
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0291
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
