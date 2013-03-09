.class Lcom/htc/android/mail/ComposeActivity$32;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->toKeyEventImpl(Landroid/view/View;)Z
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
    .line 4841
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$32;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 4845
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ComposeActivity"

    const-string v5, "start to add contact"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4848
    :cond_0
    const/4 v4, 0x1

    new-array v0, v4, [C

    .line 4849
    .local v0, a:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x898

    if-ge v2, v4, :cond_2

    .line 4851
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add people>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4852
    :cond_1
    const/4 v4, 0x0

    rem-int/lit8 v5, v2, 0x1a

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    aput-char v5, v0, v4

    .line 4853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4854
    .local v3, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@com.tw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4855
    .local v1, addr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$32;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v4, v3, v1}, Lcom/htc/android/mail/ComposeActivity;->insertContactTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 4849
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4860
    .end local v1           #addr:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method
