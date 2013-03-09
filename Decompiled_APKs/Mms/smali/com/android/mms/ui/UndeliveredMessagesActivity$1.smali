.class Lcom/android/mms/ui/UndeliveredMessagesActivity$1;
.super Ljava/lang/Object;
.source "UndeliveredMessagesActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 342
    .local v1, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 343
    .local v3, msgId:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, msgType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #calls: Lcom/android/mms/ui/UndeliveredMessagesActivity;->editMessage(JJLjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$100(Lcom/android/mms/ui/UndeliveredMessagesActivity;JJLjava/lang/String;)V

    .line 345
    return-void
.end method
