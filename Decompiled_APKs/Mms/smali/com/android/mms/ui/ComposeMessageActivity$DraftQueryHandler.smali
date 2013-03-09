.class final Lcom/android/mms/ui/ComposeMessageActivity$DraftQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DraftQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 14421
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DraftQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 14422
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 14423
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 14429
    if-eqz p3, :cond_1

    .line 14431
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14432
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DraftQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14438
    :cond_0
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 14441
    :cond_1
    return-void

    .line 14438
    :catchall_0
    move-exception v0

    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    throw v0
.end method
