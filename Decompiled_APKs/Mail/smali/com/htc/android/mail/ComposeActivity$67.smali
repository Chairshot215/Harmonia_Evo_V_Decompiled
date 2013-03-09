.class Lcom/htc/android/mail/ComposeActivity$67;
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
    .line 8063
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$67;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 8065
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$67;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->importVCard()I

    .line 8066
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$67;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->removeDialog(I)V

    .line 8067
    return-void
.end method
