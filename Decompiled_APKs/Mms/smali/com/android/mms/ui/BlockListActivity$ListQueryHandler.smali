.class Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BlockListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BlockListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;->this$0:Lcom/android/mms/ui/BlockListActivity;

    .line 225
    invoke-virtual {p1}, Lcom/android/mms/ui/BlockListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 226
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 230
    if-eqz p3, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;->this$0:Lcom/android/mms/ui/BlockListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BlockListActivity;->mAdapter:Lcom/android/mms/ui/BlockListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/BlockListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/android/mms/ui/BlockListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Result cursor may not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;->this$0:Lcom/android/mms/ui/BlockListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BlockListActivity;->finish()V

    goto :goto_0
.end method
