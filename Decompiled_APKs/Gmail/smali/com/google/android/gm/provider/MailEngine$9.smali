.class Lcom/google/android/gm/provider/MailEngine$9;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForConversationId([Ljava/lang/String;JZZ)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic val$logic:Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2144
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$9;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/MailEngine$9;->val$logic:Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 7
    .parameter "db"
    .parameter "masterQuery"
    .parameter "editTable"
    .parameter "query"

    .prologue
    .line 2148
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$CloneableMessageCursor;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$9;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$9;->val$logic:Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailEngine$CloneableMessageCursor;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;)V

    return-object v0
.end method
