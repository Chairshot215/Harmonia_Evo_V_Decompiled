.class Lcom/htc/android/mail/ComposeActivity$12;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->scrollCC()V
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
    .line 1807
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$12;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1810
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$12;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1811
    .local v1, t1:I
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$12;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v4, 0x7f090059

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1812
    .local v2, t2:I
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ComposeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollCC>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :cond_0
    const/4 v0, 0x0

    .line 1814
    .local v0, hScroll:I
    if-nez v2, :cond_2

    .line 1815
    move v0, v1

    .line 1818
    :goto_0
    if-lez v0, :cond_1

    .line 1819
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$12;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v4, 0x7f09001d

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReadScreenScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/htc/android/mail/ReadScreenScrollView;->scrollTo(II)V

    .line 1820
    :cond_1
    return-void

    .line 1817
    :cond_2
    add-int/lit8 v0, v2, -0xa

    goto :goto_0
.end method
