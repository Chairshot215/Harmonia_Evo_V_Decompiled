.class Lcom/htc/android/mail/ComposeActivity$55;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 7647
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$55;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 7649
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$55;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->prepareSendMail(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/android/mail/ComposeActivity;->access$6400(Lcom/htc/android/mail/ComposeActivity;ZZ)V

    .line 7650
    return-void
.end method
