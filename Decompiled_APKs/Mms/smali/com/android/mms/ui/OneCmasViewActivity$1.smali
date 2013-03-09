.class Lcom/android/mms/ui/OneCmasViewActivity$1;
.super Ljava/lang/Object;
.source "OneCmasViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/OneCmasViewActivity;->onPause()V
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
    .line 108
    iput-object p1, p0, Lcom/android/mms/ui/OneCmasViewActivity$1;->this$0:Lcom/android/mms/ui/OneCmasViewActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/OneCmasViewActivity$1;->val$_id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 111
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    iget-object v1, p0, Lcom/android/mms/ui/OneCmasViewActivity$1;->this$0:Lcom/android/mms/ui/OneCmasViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/OneCmasViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/OneCmasViewActivity$1;->val$_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "read = 0"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    return-void
.end method
