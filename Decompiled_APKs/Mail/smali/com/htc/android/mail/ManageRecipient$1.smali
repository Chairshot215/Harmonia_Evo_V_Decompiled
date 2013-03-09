.class Lcom/htc/android/mail/ManageRecipient$1;
.super Ljava/lang/Object;
.source "ManageRecipient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ManageRecipient;->closeCursorInBackground(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ManageRecipient;

.field final synthetic val$fCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ManageRecipient;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    iput-object p2, p0, Lcom/htc/android/mail/ManageRecipient$1;->val$fCursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$1;->val$fCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1037
    return-void
.end method
