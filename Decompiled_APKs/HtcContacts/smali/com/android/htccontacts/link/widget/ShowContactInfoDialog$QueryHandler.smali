.class public Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ShowContactInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field public loadChildComplete:Z

.field public loadParentComplete:Z

.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 160
    iput-object p1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    .line 161
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 156
    iput-boolean v1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->loadParentComplete:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->loadChildComplete:Z

    .line 162
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p2

    check-cast v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 163
    iput-object p2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->setResult(I)V

    .line 190
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    #calls: Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->finishSelf()V
    invoke-static {v0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->access$200(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)V

    .line 191
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 168
    const-string v2, "ShowContactInfoDialog"

    const-string v3, "-----------onQueryComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz p3, :cond_1

    .line 170
    const-string v2, "ShowContactInfoDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----------cursor:count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    .line 173
    .local v0, activity:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    if-nez p1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    #calls: Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildView(Landroid/database/Cursor;)Landroid/view/View;
    invoke-static {v2, p3}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->access$000(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;Landroid/database/Cursor;)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    #calls: Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->showContactDialog(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->access$100(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;Landroid/view/View;)V

    .line 180
    .end local v1           #v:Landroid/view/View;
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 185
    .end local v0           #activity:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    const v3, 0x7f0a02e5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 183
    iget-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->finish()V

    goto :goto_0
.end method
