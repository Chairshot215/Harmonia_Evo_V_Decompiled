.class Lcom/android/mms/ui/DraftList$2;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftList;
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
    .line 395
    iput-object p1, p0, Lcom/android/mms/ui/DraftList$2;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$2;->this$0:Lcom/android/mms/ui/DraftList;

    iget-object v1, p0, Lcom/android/mms/ui/DraftList$2;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->cloneCursorByPosition(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/mms/ui/DraftList;->access$202(Lcom/android/mms/ui/DraftList;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$2;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$200(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 404
    const v0, 0x7f090036

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 405
    const v0, 0x20c01f4

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 406
    const/4 v0, 0x2

    const v1, 0x20c01fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 407
    return-void
.end method
