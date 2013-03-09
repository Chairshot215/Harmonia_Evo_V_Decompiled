.class Lcom/android/mms/ui/DraftList$1;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftList;->initActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftList;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/mms/ui/DraftList$1;->this$0:Lcom/android/mms/ui/DraftList;

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
    .line 264
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const-wide/16 v1, 0x0

    .line 265
    .local v1, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$1;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 266
    .local v3, msgId:J
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$1;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, msgType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$1;->this$0:Lcom/android/mms/ui/DraftList;

    iget-object v6, p0, Lcom/android/mms/ui/DraftList$1;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v6

    #calls: Lcom/android/mms/ui/DraftList;->editMessage(JJLjava/lang/String;Landroid/database/Cursor;)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/DraftList;->access$100(Lcom/android/mms/ui/DraftList;JJLjava/lang/String;Landroid/database/Cursor;)V

    .line 268
    return-void
.end method
