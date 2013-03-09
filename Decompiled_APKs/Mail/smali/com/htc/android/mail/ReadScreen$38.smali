.class Lcom/htc/android/mail/ReadScreen$38;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4662
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$38;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$38;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->tmp_charset_select:I
    invoke-static {v0, p2}, Lcom/htc/android/mail/ReadScreen;->access$6402(Lcom/htc/android/mail/ReadScreen;I)I

    .line 4665
    return-void
.end method
