.class Lcom/htc/android/mail/ComposeActivity$15;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->scrollSubject()V
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
    .line 1854
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$15;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1856
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$15;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1858
    .local v1, v:Landroid/view/View;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1860
    .local v0, s:[I
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ComposeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollSubject>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1862
    aget v2, v0, v5

    const/16 v3, 0xaa

    if-le v2, v3, :cond_1

    .line 1863
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$15;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ReadScreenScrollView;

    const/4 v3, 0x0

    aget v4, v0, v5

    add-int/lit8 v4, v4, -0x50

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/ReadScreenScrollView;->scrollBy(II)V

    .line 1865
    :cond_1
    return-void
.end method
