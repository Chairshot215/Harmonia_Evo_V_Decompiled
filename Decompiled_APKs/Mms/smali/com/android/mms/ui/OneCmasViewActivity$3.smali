.class Lcom/android/mms/ui/OneCmasViewActivity$3;
.super Ljava/lang/Object;
.source "OneCmasViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/OneCmasViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/OneCmasViewActivity;

.field final synthetic val$_id:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/OneCmasViewActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/mms/ui/OneCmasViewActivity$3;->this$0:Lcom/android/mms/ui/OneCmasViewActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/OneCmasViewActivity$3;->val$_id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 216
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 217
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "locked"

    iget-object v3, p0, Lcom/android/mms/ui/OneCmasViewActivity$3;->this$0:Lcom/android/mms/ui/OneCmasViewActivity;

    #getter for: Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/OneCmasViewActivity;->access$000(Lcom/android/mms/ui/OneCmasViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget-object v1, p0, Lcom/android/mms/ui/OneCmasViewActivity$3;->this$0:Lcom/android/mms/ui/OneCmasViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/OneCmasViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/OneCmasViewActivity$3;->val$_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    return-void

    .line 217
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
