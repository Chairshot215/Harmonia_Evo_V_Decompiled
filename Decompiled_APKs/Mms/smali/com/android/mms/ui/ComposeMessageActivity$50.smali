.class Lcom/android/mms/ui/ComposeMessageActivity$50;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 9095
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 9097
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    .line 9098
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 9099
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditThreadid:J
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10100(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 9101
    .local v2, threadUri:Landroid/net/Uri;
    sget-object v3, Lcom/android/mms/msg/util/ColumnsMap;->PROJECTION_COUNT:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 9104
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 9105
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 9107
    .local v8, count:I
    if-nez v8, :cond_0

    .line 9108
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditThreadid:J
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10100(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 9112
    .local v7, DelUri:Landroid/net/Uri;
    invoke-static {v0, v1, v7, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9115
    .end local v7           #DelUri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 9118
    .end local v8           #count:I
    :cond_1
    return-void
.end method
