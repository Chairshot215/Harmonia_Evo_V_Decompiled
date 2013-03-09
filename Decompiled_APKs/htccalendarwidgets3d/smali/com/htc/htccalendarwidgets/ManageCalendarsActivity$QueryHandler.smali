.class Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;


# direct methods
.method public constructor <init>(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    .line 219
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 220
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    invoke-virtual {v0, p3}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 228
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_0
    const/4 p3, 0x0

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$100(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->setSelection(I)V

    .line 253
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$100(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getSelectedCalendars()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$400(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 258
    :cond_1
    :goto_1
    return-void

    .line 233
    :cond_2
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$000(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$000(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #setter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$002(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 245
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    invoke-virtual {v0, p3}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 246
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$100(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->setParentActivity(Landroid/app/Activity;)V

    .line 247
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$100(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$000(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->setCursor(Landroid/database/Cursor;)V

    .line 249
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$100(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->isAllCalendarsChecked()Z

    move-result v1

    #setter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z
    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$202(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;Z)Z

    .line 250
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarCheckBox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$300(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$200(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    #getter for: Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->access$400(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_1
.end method
