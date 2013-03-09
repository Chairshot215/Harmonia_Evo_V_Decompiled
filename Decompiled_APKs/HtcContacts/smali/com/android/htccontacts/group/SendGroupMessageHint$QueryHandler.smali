.class Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SendGroupMessageHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/SendGroupMessageHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryHandler"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Handler;)V
    .locals 0
    .parameter "cr"
    .parameter "h"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 159
    iput-object p2, p0, Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;->handler:Landroid/os/Handler;

    .line 160
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v0, buf:Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 171
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 172
    .local v3, size:I
    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 173
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 177
    :cond_1
    if-eqz p3, :cond_2

    .line 178
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;->handler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 183
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method
