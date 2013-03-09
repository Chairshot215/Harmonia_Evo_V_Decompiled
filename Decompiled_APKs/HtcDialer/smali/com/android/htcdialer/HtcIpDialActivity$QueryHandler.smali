.class final Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "HtcIpDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/HtcIpDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/HtcIpDialActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/HtcIpDialActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    .line 162
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 175
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 187
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 188
    const-string v0, "HtcIpDialActivity"

    const-string v1, "Duplicated number"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    invoke-virtual {v0}, Lcom/android/htcdialer/HtcIpDialActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #getter for: Lcom/android/htcdialer/HtcIpDialActivity;->mAdapter:Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/HtcIpDialActivity;->access$300(Lcom/android/htcdialer/HtcIpDialActivity;)Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #getter for: Lcom/android/htcdialer/HtcIpDialActivity;->mAdapter:Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/HtcIpDialActivity;->access$300(Lcom/android/htcdialer/HtcIpDialActivity;)Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 197
    :cond_0
    return-void
.end method
