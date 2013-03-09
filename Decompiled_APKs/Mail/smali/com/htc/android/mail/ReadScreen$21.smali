.class Lcom/htc/android/mail/ReadScreen$21;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->scrollSubject()V
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
    .line 2617
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$21;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$21;->this$0:Lcom/htc/android/mail/ReadScreen;

    const v1, 0x7f09014d

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$21;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->getScrollSize()I
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$3400(Lcom/htc/android/mail/ReadScreen;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2620
    return-void
.end method
