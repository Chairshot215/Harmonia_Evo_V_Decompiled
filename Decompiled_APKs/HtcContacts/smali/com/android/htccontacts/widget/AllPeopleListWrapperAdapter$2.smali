.class Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;
.super Ljava/lang/Object;
.source "AllPeopleListWrapperAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->initMyContactView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

.field final synthetic val$activity:Lcom/android/htccontacts/app/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;Lcom/android/htccontacts/app/BaseListActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->val$activity:Lcom/android/htccontacts/app/BaseListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 291
    sget-wide v0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    iget-boolean v0, v0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mIsAvailableMyContact:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->val$activity:Lcom/android/htccontacts/app/BaseListActivity;

    sget-wide v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->shareMyContactCard(Landroid/content/Context;J)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mWarningDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->access$200(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->val$activity:Lcom/android/htccontacts/app/BaseListActivity;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->createShareMyContactInavailableDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mWarningDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->access$202(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 298
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->val$activity:Lcom/android/htccontacts/app/BaseListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mWarningDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->access$200(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/BaseListActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mWarningDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->access$200(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mWarningDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->access$200(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mWarningDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->access$200(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
