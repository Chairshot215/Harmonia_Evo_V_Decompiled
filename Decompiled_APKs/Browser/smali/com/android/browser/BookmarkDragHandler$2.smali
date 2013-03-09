.class Lcom/android/browser/BookmarkDragHandler$2;
.super Ljava/lang/Object;
.source "BookmarkDragHandler.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkDragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BookmarkDragHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkDragHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/browser/BookmarkDragHandler$2;->this$0:Lcom/android/browser/BookmarkDragHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;

    .line 131
    .local v0, state:Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 144
    :pswitch_0
    const/4 v1, 0x0

    :cond_0
    :goto_0
    :pswitch_1
    return v1

    .line 135
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/BookmarkDragHandler$2;->this$0:Lcom/android/browser/BookmarkDragHandler;

    #getter for: Lcom/android/browser/BookmarkDragHandler;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;
    invoke-static {v2}, Lcom/android/browser/BookmarkDragHandler;->access$200(Lcom/android/browser/BookmarkDragHandler;)Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;->actionItemClicked(Landroid/view/View;Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;)V

    .line 138
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/BookmarkDragHandler$2;->this$0:Lcom/android/browser/BookmarkDragHandler;

    #getter for: Lcom/android/browser/BookmarkDragHandler;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/browser/BookmarkDragHandler;->access$300(Lcom/android/browser/BookmarkDragHandler;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/browser/BookmarkDragHandler$2;->this$0:Lcom/android/browser/BookmarkDragHandler;

    #getter for: Lcom/android/browser/BookmarkDragHandler;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/browser/BookmarkDragHandler;->access$300(Lcom/android/browser/BookmarkDragHandler;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 140
    iget-object v2, p0, Lcom/android/browser/BookmarkDragHandler$2;->this$0:Lcom/android/browser/BookmarkDragHandler;

    const/4 v3, 0x0

    #setter for: Lcom/android/browser/BookmarkDragHandler;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2, v3}, Lcom/android/browser/BookmarkDragHandler;->access$302(Lcom/android/browser/BookmarkDragHandler;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
