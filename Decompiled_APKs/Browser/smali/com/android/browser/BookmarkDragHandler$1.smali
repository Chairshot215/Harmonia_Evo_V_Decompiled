.class Lcom/android/browser/BookmarkDragHandler$1;
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
    .line 93
    iput-object p1, p0, Lcom/android/browser/BookmarkDragHandler$1;->this$0:Lcom/android/browser/BookmarkDragHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 97
    iget-object v10, p0, Lcom/android/browser/BookmarkDragHandler$1;->this$0:Lcom/android/browser/BookmarkDragHandler;

    #getter for: Lcom/android/browser/BookmarkDragHandler;->mDragAdapter:Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;
    invoke-static {v10}, Lcom/android/browser/BookmarkDragHandler;->access$000(Lcom/android/browser/BookmarkDragHandler;)Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;

    move-result-object v10

    invoke-interface {v10, p1}, Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;->getItemForView(Landroid/view/View;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;

    .line 99
    .local v6, state:Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    :pswitch_0
    return v9

    .line 101
    :pswitch_1
    const/4 v9, 0x1

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 104
    .local v2, id:J
    iget-wide v10, v6, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;->id:J

    cmp-long v10, v2, v10

    if-nez v10, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0

    .line 109
    :cond_1
    const/16 v10, 0x8

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 110
    .local v4, parent:J
    invoke-static {v0}, Lcom/android/browser/BookmarkDragHandler;->isFolder(Landroid/database/Cursor;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 111
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 113
    :cond_2
    iget-wide v10, v6, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;->parent:J

    cmp-long v10, v4, v10

    if-eqz v10, :cond_0

    .line 114
    iget-object v10, p0, Lcom/android/browser/BookmarkDragHandler$1;->this$0:Lcom/android/browser/BookmarkDragHandler;

    #getter for: Lcom/android/browser/BookmarkDragHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/browser/BookmarkDragHandler;->access$100(Lcom/android/browser/BookmarkDragHandler;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 115
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "parent"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 118
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v1, v7, v8, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
