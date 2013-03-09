.class public final Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MmsBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "BaseAsyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsBaseListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsBaseListActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    .line 315
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 316
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_3

    .line 321
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 330
    :cond_2
    :goto_0
    return-void

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget v0, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    if-ne v0, p1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
