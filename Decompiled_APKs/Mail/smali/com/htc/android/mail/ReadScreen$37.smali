.class Lcom/htc/android/mail/ReadScreen$37;
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

.field final synthetic val$charsets_arr:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4666
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$37;->val$charsets_arr:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4668
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->tmp_charset_select:I
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$6400(Lcom/htc/android/mail/ReadScreen;)I

    move-result v0

    if-nez v0, :cond_1

    .line 4669
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$6502(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 4679
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->reShowMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$6600(Lcom/htc/android/mail/ReadScreen;)V

    .line 4680
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected Charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6500(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4681
    :cond_0
    :goto_1
    return-void

    .line 4671
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$37;->val$charsets_arr:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->tmp_charset_select:I
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$6400(Lcom/htc/android/mail/ReadScreen;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4672
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$37;->val$charsets_arr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->tmp_charset_select:I
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6400(Lcom/htc/android/mail/ReadScreen;)I

    move-result v2

    aget-object v1, v1, v2

    #setter for: Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$6502(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 4674
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$37;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    goto :goto_1
.end method
