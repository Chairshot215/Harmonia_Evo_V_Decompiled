.class Lcom/htc/android/mail/ReadScreen$3;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
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
    .line 980
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$3;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$3;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v1, 0x1

    #calls: Lcom/htc/android/mail/ReadScreen;->replyMail(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$200(Lcom/htc/android/mail/ReadScreen;I)V

    .line 983
    return-void
.end method
