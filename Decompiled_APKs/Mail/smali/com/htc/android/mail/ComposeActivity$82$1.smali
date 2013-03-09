.class Lcom/htc/android/mail/ComposeActivity$82$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity$82;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ComposeActivity$82;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity$82;)V
    .locals 0
    .parameter

    .prologue
    .line 9533
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 9534
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v1, Lcom/htc/android/mail/ComposeActivity$MyDataSetObserver;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity$MyDataSetObserver;-><init>(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$1;)V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mDataSetObserver:Landroid/database/DataSetObserver;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$11002(Lcom/htc/android/mail/ComposeActivity;Landroid/database/DataSetObserver;)Landroid/database/DataSetObserver;

    .line 9535
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v1, Lcom/htc/android/mail/ComposeActivity$FormatChangeObserver;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v1, v2}, Lcom/htc/android/mail/ComposeActivity$FormatChangeObserver;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mFormatChangeObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$11202(Lcom/htc/android/mail/ComposeActivity;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 9536
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v6, v0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/ComposeActivity;->cursorSmart2:Landroid/database/Cursor;

    .line 9538
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->cursorSmart2:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 9539
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->cursorSmart2:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDataSetObserver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$11000(Lcom/htc/android/mail/ComposeActivity;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 9540
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->cursorSmart2:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$82$1;->this$1:Lcom/htc/android/mail/ComposeActivity$82;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFormatChangeObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$11200(Lcom/htc/android/mail/ComposeActivity;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 9542
    :cond_0
    return-void
.end method
