.class Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;
.super Ljava/lang/Object;
.source "OperatorSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/OperatorSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 299
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionView:Lcom/htc/widget/HtcListView;
    invoke-static {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$000(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getCheckedItemPosition()I

    move-result v0

    .line 300
    .local v0, checkedPos:I
    if-gez v0, :cond_0

    .line 301
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-virtual {v4, v5}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->setResult(I)V

    .line 302
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-virtual {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->finish()V

    .line 305
    :cond_0
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$200(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 306
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$200(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$200(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    :cond_1
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-virtual {v4, v5}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->setResult(I)V

    .line 308
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-virtual {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->finish()V

    .line 312
    :cond_2
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$200(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$200(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Landroid/database/Cursor;

    move-result-object v5

    const-string v6, "mnc"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, optMnc:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$200(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->mActionCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$200(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)Landroid/database/Cursor;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, optName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 317
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "code_list"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v4, "name_list"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 320
    iget-object v4, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-virtual {v4}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->finish()V

    .line 321
    return-void
.end method
