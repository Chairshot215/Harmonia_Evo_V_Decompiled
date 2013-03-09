.class Lcom/android/mms/ui/ComposeMessageActivity$12;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/msg/AbstractMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$lockUri:Landroid/net/Uri;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5133
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$lockUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$selection:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5135
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$lockUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$values:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$selection:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5137
    return-void
.end method
