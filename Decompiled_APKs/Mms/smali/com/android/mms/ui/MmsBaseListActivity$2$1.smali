.class Lcom/android/mms/ui/MmsBaseListActivity$2$1;
.super Ljava/lang/Object;
.source "MmsBaseListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsBaseListActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MmsBaseListActivity$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsBaseListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/mms/ui/MmsBaseListActivity$2$1;->this$1:Lcom/android/mms/ui/MmsBaseListActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity$2$1;->this$1:Lcom/android/mms/ui/MmsBaseListActivity$2;

    iget-object v1, v1, Lcom/android/mms/ui/MmsBaseListActivity$2;->val$deleteUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    return-void
.end method
