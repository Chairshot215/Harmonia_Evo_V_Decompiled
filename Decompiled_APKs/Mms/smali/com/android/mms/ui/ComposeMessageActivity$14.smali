.class Lcom/android/mms/ui/ComposeMessageActivity$14;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->updateIndexOnSim(Lcom/android/mms/msg/AbstractMessage;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$updateUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5430
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->val$updateUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->val$values:Landroid/content/ContentValues;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5432
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->val$updateUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5434
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$14$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$14$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5440
    return-void
.end method
