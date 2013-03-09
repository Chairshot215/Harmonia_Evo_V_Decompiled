.class Lcom/htc/android/mail/ComposeActivity$61;
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
    .line 7952
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$61;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 7954
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$61;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/htc/android/mail/ComposeActivity;->prepareSendMail(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$6400(Lcom/htc/android/mail/ComposeActivity;ZZ)V

    .line 7955
    return-void
.end method
