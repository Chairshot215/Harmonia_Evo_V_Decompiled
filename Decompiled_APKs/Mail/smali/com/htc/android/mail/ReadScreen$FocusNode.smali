.class Lcom/htc/android/mail/ReadScreen$FocusNode;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusNode"
.end annotation


# instance fields
.field private scrollAction:I

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->text:Ljava/lang/String;

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->scrollAction:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen$FocusNode;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    return-void
.end method


# virtual methods
.method public equals(Lcom/htc/android/mail/ReadScreen$FocusNode;)Z
    .locals 3
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 521
    if-nez p1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/ReadScreen$FocusNode;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/htc/android/mail/ReadScreen$FocusNode;->scrollAction:I

    iget v2, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->scrollAction:I

    if-ne v1, v2, :cond_0

    .line 524
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getScrollAction()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->scrollAction:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setScrollAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 517
    iput p1, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->scrollAction:I

    .line 518
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->text:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/ReadScreen$FocusNode;->scrollAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
