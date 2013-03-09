.class Lcom/htc/android/mail/ComposeActivity$73;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 8457
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$73;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 8463
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$73;->this$0:Lcom/htc/android/mail/ComposeActivity;

    rsub-int/lit8 v1, p2, 0x2

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mImportance:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$10302(Lcom/htc/android/mail/ComposeActivity;I)I

    .line 8464
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ComposeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priority listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$73;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mImportance:I
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$10300(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8465
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$73;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setPriorityLabel()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10400(Lcom/htc/android/mail/ComposeActivity;)V

    .line 8467
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$73;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setSavedFlag2False()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10500(Lcom/htc/android/mail/ComposeActivity;)V

    .line 8468
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 8469
    return-void
.end method
