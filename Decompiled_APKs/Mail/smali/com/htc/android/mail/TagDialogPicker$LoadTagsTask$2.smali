.class Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$2;
.super Ljava/lang/Object;
.source "TagDialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$2;->this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$2;->this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    iget-object v0, v0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    invoke-virtual {v0}, Lcom/htc/android/mail/TagDialogPicker;->finish()V

    .line 111
    return-void
.end method
