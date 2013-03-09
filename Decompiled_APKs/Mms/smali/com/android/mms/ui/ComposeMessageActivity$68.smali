.class Lcom/android/mms/ui/ComposeMessageActivity$68;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->reloadMultimediaMessageInComposeMode(Lcom/android/mms/msg/MultimediaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$originalUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12204
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$68;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$68;->val$originalUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$68;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$68;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$68;->val$originalUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12207
    return-void
.end method
