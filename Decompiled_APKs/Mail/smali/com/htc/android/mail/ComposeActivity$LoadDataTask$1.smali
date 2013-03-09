.class Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->clearResult([Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

.field final synthetic val$result:[Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity$LoadDataTask;[Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12339
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;->this$0:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;->val$result:[Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 12341
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;->val$result:[Landroid/database/Cursor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 12342
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;->val$result:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;->val$result:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;->val$result:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12341
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12344
    :cond_1
    return-void
.end method
